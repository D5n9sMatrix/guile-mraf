<!DOCTYPE html>
<!-- saved from url=(0076)https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html -->
<html><!-- Created by GNU Texinfo 7.0.3, https://www.gnu.org/software/texinfo/ --><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>List Elements (GNU Emacs Lisp Reference Manual)</title>

<meta name="description" content="List Elements (GNU Emacs Lisp Reference Manual)">
<meta name="keywords" content="List Elements (GNU Emacs Lisp Reference Manual)">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link rev="made" href="mailto:bug-gnu-emacs@gnu.org">
<link rel="icon" type="image/png" href="https://www.gnu.org/graphics/gnu-head-mini.png">
<meta name="ICBM" content="42.256233,-71.006581">
<meta name="DC.title" content="gnu.org">
<style type="text/css">
@import url('/software/emacs/manual.css');
</style>
</head>

<body lang="en">
<div class="section-level-extent" id="List-Elements">
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Building-Lists.html" accesskey="n" rel="next">Building Cons Cells and Lists</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List_002drelated-Predicates.html" accesskey="p" rel="prev">Predicates on Lists</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Lists.html" accesskey="u" rel="up">Lists</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>
<hr>
<h3 class="section" id="Accessing-Elements-of-Lists">5.3 Accessing Elements of Lists</h3>
<a class="index-entry-id" id="index-list-elements"></a>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-car"><span class="category-def">Function: </span><span><strong class="def-name">car</strong> <var class="def-var-arguments">cons-cell</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html#index-car"> ¶</a></span></dt>
<dd><p>This function returns the value referred to by the first slot of the
cons cell <var class="var">cons-cell</var>.  In other words, it returns the <small class="sc">CAR</small> of
<var class="var">cons-cell</var>.
</p>
<p>As a special case, if <var class="var">cons-cell</var> is <code class="code">nil</code>, this function
returns <code class="code">nil</code>.  Therefore, any list is a valid argument.  An
error is signaled if the argument is not a cons cell or <code class="code">nil</code>.
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">(car '(a b c))
     ⇒ a
</pre></div><div class="group"><pre class="example-preformatted">(car '())
     ⇒ nil
</pre></div></div>
</dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-cdr"><span class="category-def">Function: </span><span><strong class="def-name">cdr</strong> <var class="def-var-arguments">cons-cell</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html#index-cdr"> ¶</a></span></dt>
<dd><p>This function returns the value referred to by the second slot of the
cons cell <var class="var">cons-cell</var>.  In other words, it returns the <small class="sc">CDR</small> of
<var class="var">cons-cell</var>.
</p>
<p>As a special case, if <var class="var">cons-cell</var> is <code class="code">nil</code>, this function
returns <code class="code">nil</code>; therefore, any list is a valid argument.  An error
is signaled if the argument is not a cons cell or <code class="code">nil</code>.
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">(cdr '(a b c))
     ⇒ (b c)
</pre></div><div class="group"><pre class="example-preformatted">(cdr '())
     ⇒ nil
</pre></div></div>
</dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-car_002dsafe"><span class="category-def">Function: </span><span><strong class="def-name">car-safe</strong> <var class="def-var-arguments">object</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html#index-car_002dsafe"> ¶</a></span></dt>
<dd><p>This function lets you take the <small class="sc">CAR</small> of a cons cell while avoiding
errors for other data types.  It returns the <small class="sc">CAR</small> of <var class="var">object</var> if
<var class="var">object</var> is a cons cell, <code class="code">nil</code> otherwise.  This is in contrast
to <code class="code">car</code>, which signals an error if <var class="var">object</var> is not a list.
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">(car-safe <var class="var">object</var>)
≡
(let ((x <var class="var">object</var>))
  (if (consp x)
      (car x)
    nil))
</pre></div></div>
</dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-cdr_002dsafe"><span class="category-def">Function: </span><span><strong class="def-name">cdr-safe</strong> <var class="def-var-arguments">object</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html#index-cdr_002dsafe"> ¶</a></span></dt>
<dd><p>This function lets you take the <small class="sc">CDR</small> of a cons cell while
avoiding errors for other data types.  It returns the <small class="sc">CDR</small> of
<var class="var">object</var> if <var class="var">object</var> is a cons cell, <code class="code">nil</code> otherwise.
This is in contrast to <code class="code">cdr</code>, which signals an error if
<var class="var">object</var> is not a list.
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">(cdr-safe <var class="var">object</var>)
≡
(let ((x <var class="var">object</var>))
  (if (consp x)
      (cdr x)
    nil))
</pre></div></div>
</dd></dl>

<dl class="first-deffn first-defmac-alias-first-deffn">
<dt class="deffn defmac-alias-deffn" id="index-pop"><span class="category-def">Macro: </span><span><strong class="def-name">pop</strong> <var class="def-var-arguments">listname</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html#index-pop"> ¶</a></span></dt>
<dd><p>This macro provides a convenient way to examine the <small class="sc">CAR</small> of a
list, and take it off the list, all at once.  It operates on the list
stored in <var class="var">listname</var>.  It removes the first element from the list,
saves the <small class="sc">CDR</small> into <var class="var">listname</var>, then returns the removed
element.
</p>
<p>In the simplest case, <var class="var">listname</var> is an unquoted symbol naming a
list; in that case, this macro is equivalent to <code class="code">(prog1&nbsp;(car&nbsp;listname)&nbsp;(setq&nbsp;listname&nbsp;(cdr&nbsp;listname)))</code><!-- /@w -->.
</p>
<div class="example">
<pre class="example-preformatted">x
     ⇒ (a b c)
(pop x)
     ⇒ a
x
     ⇒ (b c)
</pre></div>

<p>More generally, <var class="var">listname</var> can be a generalized variable.  In that
case, this macro saves into <var class="var">listname</var> using <code class="code">setf</code>.
See <a class="xref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Generalized-Variables.html">Generalized Variables</a>.
</p>
<p>For the <code class="code">push</code> macro, which adds an element to a list,
See <a class="xref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Variables.html">Modifying List Variables</a>.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-nth"><span class="category-def">Function: </span><span><strong class="def-name">nth</strong> <var class="def-var-arguments">n list</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html#index-nth"> ¶</a></span></dt>
<dd><a class="anchor" id="Definition-of-nth"></a><p>This function returns the <var class="var">n</var>th element of <var class="var">list</var>.  Elements
are numbered starting with zero, so the <small class="sc">CAR</small> of <var class="var">list</var> is
element number zero.  If the length of <var class="var">list</var> is <var class="var">n</var> or less,
the value is <code class="code">nil</code>.
</p>

<div class="example">
<div class="group"><pre class="example-preformatted">(nth 2 '(1 2 3 4))
     ⇒ 3
</pre></div><div class="group"><pre class="example-preformatted">(nth 10 '(1 2 3 4))
     ⇒ nil

(nth n x) ≡ (car (nthcdr n x))
</pre></div></div>

<p>The function <code class="code">elt</code> is similar, but applies to any kind of sequence.
For historical reasons, it takes its arguments in the opposite order.
See <a class="xref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Sequence-Functions.html">Sequences</a>.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-nthcdr"><span class="category-def">Function: </span><span><strong class="def-name">nthcdr</strong> <var class="def-var-arguments">n list</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html#index-nthcdr"> ¶</a></span></dt>
<dd><p>This function returns the <var class="var">n</var>th <small class="sc">CDR</small> of <var class="var">list</var>.  In other
words, it skips past the first <var class="var">n</var> links of <var class="var">list</var> and returns
what follows.
</p>
<p>If <var class="var">n</var> is zero, <code class="code">nthcdr</code> returns all of
<var class="var">list</var>.  If the length of <var class="var">list</var> is <var class="var">n</var> or less,
<code class="code">nthcdr</code> returns <code class="code">nil</code>.
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">(nthcdr 1 '(1 2 3 4))
     ⇒ (2 3 4)
</pre></div><div class="group"><pre class="example-preformatted">(nthcdr 10 '(1 2 3 4))
     ⇒ nil
</pre></div><div class="group"><pre class="example-preformatted">(nthcdr 0 '(1 2 3 4))
     ⇒ (1 2 3 4)
</pre></div></div>
</dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-take"><span class="category-def">Function: </span><span><strong class="def-name">take</strong> <var class="def-var-arguments">n list</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html#index-take"> ¶</a></span></dt>
<dd><p>This function returns the <var class="var">n</var> first elements of <var class="var">list</var>.  Essentially,
it returns the part of <var class="var">list</var> that <code class="code">nthcdr</code> skips.
</p>
<p><code class="code">take</code> returns <var class="var">list</var> if shorter than <var class="var">n</var> elements;
it returns <code class="code">nil</code> if <var class="var">n</var> is zero or negative.
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">(take 3 '(a b c d))
     ⇒ (a b c)
</pre></div><div class="group"><pre class="example-preformatted">(take 10 '(a b c d))
     ⇒ (a b c d)
</pre></div><div class="group"><pre class="example-preformatted">(take 0 '(a b c d))
     ⇒ nil
</pre></div></div>
</dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-ntake"><span class="category-def">Function: </span><span><strong class="def-name">ntake</strong> <var class="def-var-arguments">n list</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html#index-ntake"> ¶</a></span></dt>
<dd><p>This is a version of <code class="code">take</code> that works by destructively modifying
the list structure of the argument.  That makes it faster, but the
original value of <var class="var">list</var> may be lost.
</p>
<p><code class="code">ntake</code> returns <var class="var">list</var> unmodified if shorter than <var class="var">n</var>
elements; it returns <code class="code">nil</code> if <var class="var">n</var> is zero or negative.
Otherwise, it returns <var class="var">list</var> truncated to its first <var class="var">n</var>
elements.
</p>
<p>This means that it is usually a good idea to use the return value and
not just rely on the truncation effect unless <var class="var">n</var> is known to be
positive.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-last"><span class="category-def">Function: </span><span><strong class="def-name">last</strong> <var class="def-var-arguments">list &amp;optional n</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html#index-last"> ¶</a></span></dt>
<dd><p>This function returns the last link of <var class="var">list</var>.  The <code class="code">car</code> of
this link is the list’s last element.  If <var class="var">list</var> is null,
<code class="code">nil</code> is returned.  If <var class="var">n</var> is non-<code class="code">nil</code>, the
<var class="var">n</var>th-to-last link is returned instead, or the whole of <var class="var">list</var>
if <var class="var">n</var> is bigger than <var class="var">list</var>’s length.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-safe_002dlength"><span class="category-def">Function: </span><span><strong class="def-name">safe-length</strong> <var class="def-var-arguments">list</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html#index-safe_002dlength"> ¶</a></span></dt>
<dd><a class="anchor" id="Definition-of-safe_002dlength"></a><p>This function returns the length of <var class="var">list</var>, with no risk of either
an error or an infinite loop.  It generally returns the number of
distinct cons cells in the list.  However, for circular lists,
the value is just an upper bound; it is often too large.
</p>
<p>If <var class="var">list</var> is not <code class="code">nil</code> or a cons cell, <code class="code">safe-length</code>
returns 0.
</p></dd></dl>

<p>The most common way to compute the length of a list, when you are not
worried that it may be circular, is with <code class="code">length</code>.  See <a class="xref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Sequence-Functions.html">Sequences</a>.
</p>
<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-caar"><span class="category-def">Function: </span><span><strong class="def-name">caar</strong> <var class="def-var-arguments">cons-cell</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html#index-caar"> ¶</a></span></dt>
<dd><p>This is the same as <code class="code">(car (car <var class="var">cons-cell</var>))</code>.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-cadr"><span class="category-def">Function: </span><span><strong class="def-name">cadr</strong> <var class="def-var-arguments">cons-cell</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html#index-cadr"> ¶</a></span></dt>
<dd><p>This is the same as <code class="code">(car (cdr <var class="var">cons-cell</var>))</code>
or <code class="code">(nth 1 <var class="var">cons-cell</var>)</code>.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-cdar"><span class="category-def">Function: </span><span><strong class="def-name">cdar</strong> <var class="def-var-arguments">cons-cell</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html#index-cdar"> ¶</a></span></dt>
<dd><p>This is the same as <code class="code">(cdr (car <var class="var">cons-cell</var>))</code>.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-cddr"><span class="category-def">Function: </span><span><strong class="def-name">cddr</strong> <var class="def-var-arguments">cons-cell</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html#index-cddr"> ¶</a></span></dt>
<dd><p>This is the same as <code class="code">(cdr (cdr <var class="var">cons-cell</var>))</code>
or <code class="code">(nthcdr 2 <var class="var">cons-cell</var>)</code>.
</p></dd></dl>

<a class="index-entry-id" id="index-caaar"></a>
<a class="index-entry-id" id="index-caadr"></a>
<a class="index-entry-id" id="index-cadar"></a>
<a class="index-entry-id" id="index-caddr"></a>
<a class="index-entry-id" id="index-cdaar"></a>
<a class="index-entry-id" id="index-cdadr"></a>
<a class="index-entry-id" id="index-cddar"></a>
<a class="index-entry-id" id="index-cdddr"></a>
<a class="index-entry-id" id="index-caaaar"></a>
<a class="index-entry-id" id="index-caaadr"></a>
<a class="index-entry-id" id="index-caadar"></a>
<a class="index-entry-id" id="index-caaddr"></a>
<a class="index-entry-id" id="index-cadaar"></a>
<a class="index-entry-id" id="index-cadadr"></a>
<a class="index-entry-id" id="index-caddar"></a>
<a class="index-entry-id" id="index-cadddr"></a>
<a class="index-entry-id" id="index-cdaaar"></a>
<a class="index-entry-id" id="index-cdaadr"></a>
<a class="index-entry-id" id="index-cdadar"></a>
<a class="index-entry-id" id="index-cdaddr"></a>
<a class="index-entry-id" id="index-cddaar"></a>
<a class="index-entry-id" id="index-cddadr"></a>
<a class="index-entry-id" id="index-cdddar"></a>
<a class="index-entry-id" id="index-cddddr"></a>
<p>In addition to the above, 24 additional compositions of <code class="code">car</code> and
<code class="code">cdr</code> are defined as <code class="code">c<var class="var">xxx</var>r</code> and <code class="code">c<var class="var">xxxx</var>r</code>,
where each <code class="code"><var class="var">x</var></code> is either <code class="code">a</code> or <code class="code">d</code>.  <code class="code">cadr</code>,
<code class="code">caddr</code>, and <code class="code">cadddr</code> pick out the second, third or fourth
elements of a list, respectively.  <samp class="file">cl-lib</samp> provides the same
under the names <code class="code">cl-second</code>, <code class="code">cl-third</code>, and
<code class="code">cl-fourth</code>.  See <a data-manual="cl" href="https://www.gnu.org/software/emacs/manual/html_node/cl/List-Functions.html#List-Functions">List Functions</a> in <cite class="cite">Common Lisp
Extensions</cite>.
</p>
<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-butlast"><span class="category-def">Function: </span><span><strong class="def-name">butlast</strong> <var class="def-var-arguments">x &amp;optional n</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html#index-butlast"> ¶</a></span></dt>
<dd><p>This function returns the list <var class="var">x</var> with the last element,
or the last <var class="var">n</var> elements, removed.  If <var class="var">n</var> is greater
than zero it makes a copy of the list so as not to damage the
original list.  In general, <code class="code">(append (butlast <var class="var">x</var> <var class="var">n</var>)
(last <var class="var">x</var> <var class="var">n</var>))</code> will return a list equal to <var class="var">x</var>.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-nbutlast"><span class="category-def">Function: </span><span><strong class="def-name">nbutlast</strong> <var class="def-var-arguments">x &amp;optional n</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html#index-nbutlast"> ¶</a></span></dt>
<dd><p>This is a version of <code class="code">butlast</code> that works by destructively
modifying the <code class="code">cdr</code> of the appropriate element, rather than
making a copy of the list.
</p></dd></dl>

</div>
<hr>
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Building-Lists.html">Building Cons Cells and Lists</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List_002drelated-Predicates.html">Predicates on Lists</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Lists.html">Lists</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>





</body></html>