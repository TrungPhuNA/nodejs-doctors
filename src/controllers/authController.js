import { validationResult } from "express-validator";
import authService from "../services/authService";

let getLogin = (req, res) => {
    return res.render("auth/login.ejs", {
        error: req.flash("error"),
    });
};

let getRegister = (req, res) => {
    return res.render("auth/register.ejs");
};

let postRegister = async (req, res) => {
    let hasErrors = validationResult(req).array({
        onlyFirstError: true
    });
    if (!hasErrors.length) {
        try {
            let user = req.body;
            console.info("===========[postRegister] ===========[user] : ",user);

            let linkVerify = ``;
            await authService.register({user}, linkVerify)

            req.flash("success", "Thành công");
            res.redirect('/login');
            //
            // await authService.register().then(async (user) => {
            //     res.redirect('login');
            //     let linkVerify = `${req.protocol}://${req.get("host")}/verify/${user.local.verifyToken}`;
            //     await authService.register({user}, linkVerify)
            //     .then((message) => {
            //         req.flash("success", message);
            //         res.redirect('/login');
            //     })
            //     .catch((err) => {
            //         console.log(err);
            //     });
            // }).catch((err) => {
            //     console.log(err);
            // });
        } catch (err) {
            console.info("===========[] ===========[err] : ",err);
            req.flash("errors", err);
            res.render('auth/register.ejs', {
                oldData: req.body
            });
        }
    } else {
        let errEmail = '', errPassword = '', errPasswordConfirm = '';
        hasErrors.forEach((err) => {
            if (err.param === 'rg_email') errEmail = err.msg;
            if (err.param === 'rg_password') errPassword = err.msg;
            if (err.param === 'rg_password_again') errPasswordConfirm = err.msg;
        });
        res.render("auth/register", {
            errEmail: errEmail,
            errPassword: errPassword,
            errPasswordConfirm: errPasswordConfirm,
            hasErrors: hasErrors,
            oldData: req.body
        })
    }
};
let postApiRegister = async (req, res) => {
    let hasErrors = validationResult(req).array({
        onlyFirstError: true
    });
    if (!hasErrors.length) {
        try {
            let user = req.body;
            console.info("===========[postRegister] ===========[user] : ",user);
            await authService.register().then(async (user) => {
                console.log(user);
                res.redirect('login');
                let linkVerify = `${req.protocol}://${req.get("host")}/verify/${user.local.verifyToken}`;
                await authService.register({user}, linkVerify)
                .then((message) => {
                    res.status(200).json(user);
                })
                .catch((err) => {
                    console.log(err);
                });
            }).catch((err) => {
                console.log(err);
            });
        } catch (err) {
            // req.flash("errors", err);
            // res.render('/register', {
            //     oldData: req.body
            // });
            res.status(500).json(err);
        }
    } else {
        let errEmail = '', errPassword = '', errPasswordConfirm = '';
        hasErrors.forEach((err) => {
            if (err.param === 'rg_email') errEmail = err.msg;
            if (err.param === 'rg_password') errPassword = err.msg;
            if (err.param === 'rg_password_again') errPasswordConfirm = err.msg;
        });
        res.render("auth/register.ejs", {
            errEmail: errEmail,
            errPassword: errPassword,
            errPasswordConfirm: errPasswordConfirm,
            hasErrors: hasErrors,
            oldData: req.body
        })
    }
};

let verifyAccount = async (req, res) => {
    let errorArr = [];
    let successArr = [];
    try {
        let verifySuccess = await auth.verifyAccount(req.params.token);
        successArr.push(verifySuccess);
        req.flash("success", successArr);
        return res.redirect("/login");

    } catch (error) {
        console.log(error);
    }
};

let getLogout = (req, res) => {
    req.session.destroy(function(err) {
        console.log(err);
        return res.redirect("/login");
    });

};

let checkLoggedIn = (req, res, next) => {
    if (!req.isAuthenticated()) {
        return res.redirect("/login");
    }
    next();
};

let checkLoggedOut = (req, res, next) => {
    if (req.isAuthenticated()) {
        return res.redirect("/users");
    }
    next();
};
module.exports = {
    getLogin: getLogin,
    getRegister: getRegister,
    postRegister: postRegister,
    postApiRegister: postApiRegister,
    verifyAccount: verifyAccount,
    getLogout: getLogout,
    checkLoggedIn: checkLoggedIn,
    checkLoggedOut: checkLoggedOut
};
