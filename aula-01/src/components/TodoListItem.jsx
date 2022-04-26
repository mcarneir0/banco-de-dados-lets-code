import { useEffect, useState } from 'react'

export function TodoListItem({ id, text, checked = false }) {

    //  Usado para alterar o estado do check button na tela
    //  E também ativa o useEffect quando alterado
    const [checkedState, setCheckedstate] = useState(checked)


    //  Usado para atualizar o local storage após a execução do setCheckedstate
    useEffect(() => {
        const array = JSON.parse(localStorage.getItem("itensArray"))   //  Cria um array com as informações do local storage
        array[id].checked = checkedState    //  Altera a informação do check button no objeto posição id
        localStorage.setItem("itensArray", JSON.stringify(array))  //  Atualiza o local storage
        }, [checkedState, id]   //  Condição de execução do useEffect
                                //  Roda ao carregar a página e depois roda novamente somente quando o "checkedState" do "id" for atualizado
    )

    return <>
        <input id={id} type="checkbox" checked={checkedState} onChange={() => setCheckedstate(!checkedState)} />
        <label htmlFor={id}>{ text }</label><br />
    </>
}
