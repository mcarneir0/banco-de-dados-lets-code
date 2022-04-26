import { TodoListItem } from '../components/TodoListItem'
import './Home.css'

export function Home() {

    // const itensArray = [
    //     { text: "Acordar as 7 horas"},
    //     { text: "Lavar a louça"},
    //     { text: "Passear com os cachorros por 30 minutos"},
    //     { text: "Lavar o carro inteiro", checked: true}
    // ]

    // //  Salva o array acima no local storage
    // localStorage.setItem("itensArray",JSON.stringify(itensArray))
    
    
    //  Cria um array com todos os objetos do local storage
    const novoArray = JSON.parse(localStorage.getItem("itensArray"))

    return <>
        <div className="container">
            {/*
                {itensArray.map(({ id, text, checked }) => {
                    return <TodoListItem key={id} id={id} text={text} checked={checked} />
                })}
            */}

            {novoArray.map((obj, index) => {
                return <TodoListItem key={index} id={index} {...obj} />
            })}
        </div>
    </>
}
