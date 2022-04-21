import { TodoListItem } from '../components/TodoListItem'
import './Home.css'

export function Home() {

    const itensArray = [
        { id: 1, text: "Acordar as 7 horas"},
        { id: 2, text: "Lavar a louça"},
        { id: 3, text: "Passear com os cachorros por 30 minutos"},
        { id: 4, text: "Lavar o carro inteiro", checked: true}
    ]

    localStorage.setItem("chave", "valor")      //  Armazena nos arquivos do navegador, continua mesmo em nova janela
    sessionStorage.setItem("chave", "valor")    //  Armazena na aba do navegador, é perdido se fechar a aba

    return <>
        <div className="container">
            {/*
                {itensArray.map(({ id, text, checked }) => {
                    return <TodoListItem key={id} id={id} text={text} checked={checked} />
                })}
            */}

            {itensArray.map( (obj) => {
                return <TodoListItem key={obj.id} {...obj} />
            })}
        </div>
    </>
}
