import { Visibility, VisibilityOff } from "@mui/icons-material";
import ErrorIcon from "@mui/icons-material/Error";
import {
  Button,
  FormControl,
  IconButton,
  InputAdornment,
  InputLabel,
  Link,
  OutlinedInput,
} from "@mui/material";
import React from "react";
import { Link as LinkRoute, useNavigate } from "react-router-dom";
import { signUp } from "../../controllers/SignController";
import styles from "./Registr.module.sass";

const Registr: React.FC = () => {
  const navigate = useNavigate();
  const [showPassword, setShowPassword] = React.useState(false);
  const [login, setLogin] = React.useState<string>("");
  const [password, setPassword] = React.useState<string>("");
  const [repeatPassword, setRepeatPassword] = React.useState<string>("");
  const [fio, setFIO] = React.useState("");
  const [phoneNumber, setPhoneNumber] = React.useState<number>(0);
  const [kindergarten, setKindergarten] = React.useState<string>("");
  const [error, setError] = React.useState<string | null>(null);

  const handleClickShowPassword = React.useCallback(() => {
    setShowPassword((show) => !show);
  }, []);

  const handleMouseDownPassword = React.useCallback(
    (event: React.MouseEvent<HTMLButtonElement>) => {
      event.preventDefault();
    },
    []
  );

  const handleFIO = React.useCallback(
    (event: React.ChangeEvent<HTMLInputElement>) => {
      const target = event.target as HTMLInputElement;
      setFIO(target.value || "");
    },
    []
  );

  const handlePhoneNumber = React.useCallback(
    (event: React.ChangeEvent<HTMLInputElement>) => {
      const target = event.target as HTMLInputElement;
      setPhoneNumber(Number(target.value || ""));
    },
    []
  );
  const handleKindergarten = React.useCallback(
    (event: React.ChangeEvent<HTMLInputElement>) => {
      const target = event.target as HTMLInputElement;
      setKindergarten(target.value);
    },
    []
  );
  const handlePassword = React.useCallback(
    (event: React.ChangeEvent<HTMLInputElement>) => {
      event.preventDefault();
      const target = event.target as HTMLInputElement;
      setPassword(target.value || "");
    },
    []
  );
  const handleRepeatPassword = React.useCallback(
    (event: React.ChangeEvent<HTMLInputElement>) => {
      event.preventDefault();
      const target = event.target as HTMLInputElement;
      setRepeatPassword(target.value || "");
    },
    []
  );

  const handleLogin = React.useCallback(
    (event: React.ChangeEvent<HTMLInputElement>) => {
      const target = event.target as HTMLInputElement;
      setLogin(target.value || "");
    },
    []
  );

  const handleSingUp = React.useCallback(async () => {
    const data = await signUp(fio, phoneNumber, login, password, kindergarten);
    if (typeof data === "object") {
      localStorage.setItem("login", login);
      localStorage.setItem("password", password);
      navigate("/");
      return;
    }
    setError(data);
  }, [fio, login, navigate, password, phoneNumber, kindergarten]);

  React.useEffect(() => {
    if (password !== repeatPassword) setError("Введеные пароли не совпадают");
    else if (!kindergarten) setError("Введите название садика");
    else setError(null);
  }, [password, repeatPassword, kindergarten]);

  return (
    <form className={styles.registr_form}>
      <h2 className={styles["registr_form-title"]}>SIGN UP</h2>
      <FormControl sx={{ m: 1, width: "50ch" }} variant="outlined">
        <InputLabel htmlFor="outlined-adornment-password">FIO</InputLabel>
        <OutlinedInput
          id="outlined-adornment-password"
          type="text"
          label="FIO"
          autoComplete="off"
          onChange={handleFIO}
          value={fio}
        />
      </FormControl>
      <FormControl sx={{ m: 1, width: "50ch" }} variant="outlined">
        <InputLabel htmlFor="outlined-adornment-password">
          Phone number
        </InputLabel>
        <OutlinedInput
          id="outlined-adornment-password"
          type="number"
          label="Phone number"
          autoComplete="off"
          onChange={handlePhoneNumber}
          value={phoneNumber || ""}
        />
      </FormControl>
      <FormControl sx={{ m: 1, width: "50ch" }} variant="outlined">
        <InputLabel htmlFor="outlined-adornment-password">
          Kindergarten
        </InputLabel>
        <OutlinedInput
          id="outlined-adornment-password"
          type="text"
          label="Kindergarten"
          autoComplete="off"
          onChange={handleKindergarten}
          value={kindergarten}
        />
      </FormControl>
      <FormControl sx={{ m: 1, width: "50ch" }} variant="outlined">
        <InputLabel htmlFor="outlined-adornment-password">Login</InputLabel>
        <OutlinedInput
          id="outlined-adornment-password"
          type="text"
          label="Login"
          autoComplete="off"
          onChange={handleLogin}
          value={login}
        />
      </FormControl>
      <FormControl sx={{ m: 1, width: "50ch" }} variant="outlined">
        <InputLabel htmlFor="outlined-adornment-password">Password</InputLabel>
        <OutlinedInput
          id="outlined-adornment-password"
          type={showPassword ? "text" : "password"}
          endAdornment={
            <InputAdornment position="end">
              <IconButton
                aria-label="toggle password visibility"
                onClick={handleClickShowPassword}
                onMouseDown={handleMouseDownPassword}
                edge="end">
                {showPassword ? <VisibilityOff /> : <Visibility />}
              </IconButton>
            </InputAdornment>
          }
          autoComplete="new-password"
          label="Password"
          onChange={handlePassword}
          value={password}
        />
      </FormControl>
      <FormControl sx={{ m: 1, width: "50ch" }} variant="outlined">
        <InputLabel htmlFor="outlined-adornment-password">
          Repeat password
        </InputLabel>
        <OutlinedInput
          id="outlined-adornment-password"
          type={showPassword ? "text" : "password"}
          endAdornment={
            <InputAdornment position="end">
              <IconButton
                aria-label="toggle password visibility"
                onClick={handleClickShowPassword}
                onMouseDown={handleMouseDownPassword}
                edge="end">
                {showPassword ? <VisibilityOff /> : <Visibility />}
              </IconButton>
            </InputAdornment>
          }
          autoComplete="new-password"
          label="Repeat password"
          onChange={handleRepeatPassword}
          value={repeatPassword}
        />
      </FormControl>
      <div className={styles["registr_form-btn"]}>
        <Button
          variant="contained"
          size="large"
          sx={{ width: "25ch" }}
          onClick={handleSingUp}
          disabled={
            !fio ||
            !login ||
            !password ||
            !phoneNumber ||
            !repeatPassword ||
            !kindergarten ||
            !!error
          }>
          SIGN UP
        </Button>
        <LinkRoute to="/">
          <Link underline="hover">{"SIGN IN"}</Link>
        </LinkRoute>
      </div>
      {error && (
        <div className={styles["registr_form-error"]}>
          <ErrorIcon />
          <span>{error}</span>
        </div>
      )}
    </form>
  );
};
export default Registr;
