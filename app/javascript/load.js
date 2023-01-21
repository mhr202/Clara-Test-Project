export const load = async (id) => {
  const sampleData = await fetch(`http://localhost:3000/api/v1/graphs/${id}`).then(res=> res.json()).then(data=> data)
  
  //Dump the data returned from api
  console.log(sampleData)   

  return new Promise((resolve, reject) => {
    if (!sampleData) {
      reject('No data to load')
    }
    resolve(sampleData)
  })
}