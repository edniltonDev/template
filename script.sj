function openTab(evt, tabName) {
	const tabs = document.querySelectorAll('.tab-content');
	tabs.forEach(tab => tab.classList.remove('active'));
	const buttons = document.querySelectorAll('.tablink');
	buttons.forEach(btn => btn.classList.remove('active'));
	document.getElementById(tabName).classList.add('active');
	evt.currentTarget.classList.add('active');
}
function mostrarCausaOutra(selectElement) {
	const causaOutra = document.getElementById("causaOutra");
	causaOutra.style.display = selectElement.value === "Outra" ? "block" : "none";
}
document.querySelectorAll('input[name="prot"]').forEach(el => {
el.addEventListener('change', () => {
document.getElementById('complementoProtegido').style.display = el.value === 'SIM' ? 'block' : 'none';
});
});
document.querySelectorAll('input[name="opera"]').forEach(el => {
el.addEventListener('change', () => {
document.getElementById('complementoRiscoOperacional').style.display = el.value === 'SIM' ? 'block' : 'none';
});
});

function mostrarStatusOutra(selectElement) {
	const statusOutra = document.getElementById("statusOutra");
	statusOutra.style.display = selectElement.value === "Outra" ? "block" : "none";
}
function CopiarStatus() {
	let cidad = document.getElementById("cidad").value.toUpperCase();
	let servicosSelecionados = Array.from(document.getElementById("servicos").selectedOptions).map(opt => opt.value).join(', ') || 'N/A';
	let dataInput = document.getElementById("data").value;
	let dataFormatada = dataInput ? new Date(dataInput).toLocaleString('pt-BR', { timeZone: 'America/Sao_Paulo', year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit' }) : '';
	let imp = document.getElementById("imp").value || 'N/A';
	let falha = document.getElementById("falha").value.toUpperCase() || 'N/A';
	 
	let prot = document.querySelector('input[name="prot"]:checked')?.value.toUpperCase() || 'N/A';
	let protComp = prot === 'SIM' ? ", " + (document.getElementById("complementoProtText").value.toUpperCase() || '') : '';
	 
	let opera = document.querySelector('input[name="opera"]:checked')?.value.toUpperCase() || 'N/A';
	let operaComp = opera === 'SIM' ? ", " + (document.getElementById("complementoRiscoOpText").value.toUpperCase() || '') : '';
	 
	let acionaral = document.getElementById("acionaral").value.toUpperCase() || 'N/A';
	let outage = document.getElementById("outage").value.toUpperCase() || 'N/A';
	let meg = document.getElementById("meg").value.toUpperCase() || 'N/A';
	 
	let causa = document.getElementById("causa").value.toUpperCase();
	let causaOutra = causa === 'OUTRA' ? ", " + (document.getElementById("causaOutra").value.toUpperCase() || '') : '';
	 
	let status = document.getElementById("status").value.toUpperCase();
	let statusOutra = status === 'OUTRA' ? ", " + (document.getElementById("statusOutra").value.toUpperCase() || '') : '';
	 
	let texto = `CIDADE: ${cidad}\nSERVIÇOS AFETADOS: ${servicosSelecionados}\nHI: ${dataFormatada}\nIMP%: ${imp}%\nFALHA: ${falha}\nPROTEGIDO: ${prot}${protComp}\nRISCO OPERACIONAL(SIM/NÃO): ${opera}${operaComp}\nRAL/INC: ${acionaral}\nOUTAGE: ${outage}\nMEG: ${meg}\nCAUSA: ${causa}${causaOutra}\nSTATUS: ${status}${statusOutra}`;
	 
	navigator.clipboard.writeText(texto).then(() => alert("Texto copiado com sucesso!"));
}

function LimparStatus() {
	document.getElementById("statusForm").reset();
	document.getElementById("complementoProtegido").style.display = 'none';
	document.getElementById("complementoRiscoOperacional").style.display = 'none';
	document.getElementById("causaOutra").style.display = 'none';
}

function mostrarCausaOutraNOC(selectElement) {
	document.getElementById("causaOutraNOC").style.display = selectElement.value === "Outra" ? "block" : "none";
}
function mostrarStatusOutraNOC(selectElement) {
	document.getElementById("statusOutraNOC").style.display = selectElement.value === "Outra" ? "block" : "none";
}
document.querySelectorAll('input[name="protNOC"]').forEach(el => {
el.addEventListener('change', () => {
document.getElementById('complementoProtegidoNOC').style.display = el.value === 'SIM' ? 'block' : 'none';
});
});
document.querySelectorAll('input[name="operaNOC"]').forEach(el => {
el.addEventListener('change', () => {
document.getElementById('complementoRiscoOperacionalNOC').style.display = el.value === 'SIM' ? 'block' : 'none';
});
});
// Copiar Evento Massivo NOC
function CopiarEventoNOC() {
	let massivo = document.getElementById("massivoNoc").value.toUpperCase() || 'N/A';
	let cidad = document.getElementById("cidadNOC").value.toUpperCase() || 'N/A';
	let servicosSelecionados = Array.from(document.getElementById("servicosNOC").selectedOptions).map(opt => opt.value).join(', ') || 'N/A';
	let dataInput = document.getElementById("dataNOC").value;
	let dataFormatada = dataInput ? new Date(dataInput).toLocaleString('pt-BR', { timeZone: 'America/Sao_Paulo', year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit' }) : '';
	let imp = document.getElementById("impNOC").value || 'N/A';
	let falha = document.getElementById("falhaNOC").value.toUpperCase() || 'N/A';
	 
	let prot = document.querySelector('input[name="protNOC"]:checked')?.value.toUpperCase() || 'N/A';
	let protComp = prot === 'SIM' ? ", " + (document.getElementById("complementoProtTextNOC").value.toUpperCase() || '') : '';
	 
	let opera = document.querySelector('input[name="operaNOC"]:checked')?.value.toUpperCase() || 'N/A';
	let operaComp = opera === 'SIM' ? ", " + (document.getElementById("complementoRiscoOpTextNOC").value.toUpperCase() || '') : '';
	 
	let acionaral = document.getElementById("acionaralNOC").value.toUpperCase() || 'N/A';
	let outage = document.getElementById("outageNOC").value.toUpperCase() || 'N/A';
	let meg = document.getElementById("megNOC").value.toUpperCase() || 'N/A';
	 
	let causa = document.getElementById("causaNOC").value === 'Outra' ?
	(document.getElementById("causaOutraNOC").value.toUpperCase() || 'N/A') :
	document.getElementById("causaNOC").value.toUpperCase();
	 
	let status = document.getElementById("statusNOC").value === 'Outra' ?
	(document.getElementById("statusOutraNOC").value.toUpperCase() || 'N/A') :
	document.getElementById("statusNOC").value.toUpperCase();
	 
	let texto = `${massivo}\nCIDADE: ${cidad}\nSERVIÇOS AFETADOS: ${servicosSelecionados}\nHI: ${dataFormatada}\nIMP%: ${imp}%\nFALHA: ${falha}\nPROTEGIDO: ${prot}${protComp}\nRISCO OPERACIONAL(SIM/NÃO): ${opera}${operaComp}\nRAL/INC: ${acionaral}\nOUTAGE: ${outage}\nMEG: ${meg}\nCAUSA: ${causa}\nSTATUS: ${status}`;
	 
	navigator.clipboard.writeText(texto).then(() => {
	alert('Texto copiado para a área de transferência!');
	}).catch(() => {
	alert('Erro ao copiar o texto.');
	});
}
 
// Limpar Evento NOC
function LimparStatusNOC() {
	document.getElementById("eventoNOCform").reset();
	document.getElementById('complementoProtegidoNOC').style.display = 'none';
	document.getElementById('complementoRiscoOperacionalNOC').style.display = 'none';
	document.getElementById("causaOutraNOC").style.display = 'none';
	document.getElementById("statusOutraNOC").style.display = 'none';
}
	
function calcularImpacto() {
       const afetados = parseInt(document.getElementById("clientes_afetados").value);
       const total = parseInt(document.getElementById("clientes_total").value);
       if (!isNaN(afetados) && !isNaN(total) && total > 0) {
	        const percentual = ((afetados / total) * 100).toFixed(2);
	        document.getElementById("resultadoImpacto").innerText = `Impacto: ${percentual}%`;
      } else {
	        document.getElementById("resultadoImpacto").innerText = "Preencha os dois campos corretamente.";
	}
}


function gerarFca() {
	let fcaservicosSelecionados = Array.from(document.getElementById("fca_servico").selectedOptions).map(opt => opt.value).join(', ') || 'N/A';
	const inicio = document.getElementById("fca_inicio").value;
	const fim = document.getElementById("fca_fim").value;
	const fato = document.getElementById("fca_fato").value;
	 const causa = document.getElementById("fca_causa").value;
	const acao = document.getElementById("fca_acao").value;
	const regiao = document.getElementById("fca_regiao").value;
	const resultado = `FCA\nCidade: ${regiao}\nServiço: ${fcaservicosSelecionados}\nInício: ${inicio}\nFim: ${fim}\nFato: ${fato}\nCausa: ${causa}\nAção: ${acao}\n`;
	document.getElementById("resultadoFca").innerText = resultado;
}
	