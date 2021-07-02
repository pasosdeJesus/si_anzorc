const range = len => {
  const arr = []
  for (let i = 0; i < len; i++) {
    arr.push(i)
  }
  return arr
}

const newPerson = (resultado, actividad) => {
  const statusChance = Math.random()
  return {
    firstName: resultado, //namor.generate({ words: 1, numbers: 0 }),
    lastName: actividad, //namor.generate({ words: 1, numbers: 0 }),
    age: Math.floor(Math.random() * 30),
    visits: Math.floor(Math.random() * 100),
    progress: Math.floor(Math.random() * 100),
    status:
    statusChance > 0.66
    ? 'relationship'
    : statusChance > 0.33
    ? 'complicated'
    : 'single',
  }
}

export default function llenarCeldas(...lens) {
  const makeDataLevel = (depth = 0) => {
    const len = lens[depth]
    return range(len).map(d => {

      let resultadopf = "ejres" + d
      let actividadpf = "ejact" + d
      if (d < lens[1].actividadespf.length) {
        resultadopf = lens[1].actividadespf[d]['resultadopf_codigo'] + 
          ': ' + lens[1].actividadespf[d]['resultadopf_titulo']
        actividadpf = lens[1].actividadespf[d]['codigo'] + ': ' + 
          lens[1].actividadespf[d]['titulo']
      }
      return {
        ...newPerson(resultadopf, actividadpf),
        subRows: lens[depth + 1] ? makeDataLevel(depth + 1) : undefined,
      }
    })
  }

  return makeDataLevel()
}


