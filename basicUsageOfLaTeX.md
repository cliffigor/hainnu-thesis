# Basic TeX File Structure

1. LoadClass
2. Preamble
3. Mainbody

## Basic Grammar
1. Text Structure
	- chapter
	- section
	- subsection
	- subsubsection
2. Paragraph and newline
	- "Enter"
	- \\\
3. Insert Figure
`\begin{figure}[htbp]`
`\centering`
`\includegraphics[width=xcm]{imagefile}`
`\caption{Picture1}`
`\end{figure}`
4. Insert Code
`\begin{lstlisting}[language=C]`
`//Your code here`
`\end{lstlisting}`
5. Insert math symbol
use `$...$` or `$$...$$` or 
`\begin{equation}`
`%Your equation here`
`\end{equation}`
$$\int_0^1 D(x)dx = \int_0^1 \chi_{Q_0} (x) dx = m(Q_0) = 0$$
useful tools:
- Mathpix
- MathType
6. itemize and enumerate
- itemize
`\begin{itemize}`
`\item ...`
`\end{itemize}`

- enumerate
`\begin{enumerate}`
`\item ...`
`\end{enumerate}`
