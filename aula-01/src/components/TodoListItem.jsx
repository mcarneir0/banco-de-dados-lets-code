import { useState } from 'react'

export function TodoListItem({ id, text, checked = false }) {

    const [checkedState, setCheckedstate] = useState(checked)

    return <>
        <input id={`check-${id}`} type="checkbox" checked={checkedState} onChange={() => setCheckedstate(!checkedState)} />
        <label htmlFor={`check-${id}`}>{ text }</label><br />
    </>
}
