import { postRequest } from "../axios/http"

export const signIn = async (login: string, password: string) => {
    const data = await postRequest(`/api/signIn/${login}`, {}, { login, password });
    if (data) {
        return data
    } else {
        return 'Логин или пароль введены не правильно'
    }
}
export const signUp = async (fio: string, phoneNumber: number, login: string, password: string, kindergarten: string) => {
    const data = await postRequest(`/api/signUp/${login}`, {}, { fio, phoneNumber, login, password, kindergarten });
    if (data) {
        return data
    } else {
        return 'Такой логин уже кем-то занят'
    }
}
