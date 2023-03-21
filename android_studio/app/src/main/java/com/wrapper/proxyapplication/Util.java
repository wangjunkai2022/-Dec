jadx.core.utils.exceptions.JadxRuntimeException: Failed to generate code for class: com.wrapper.proxyapplication.Util
	at jadx.core.ProcessClass.generateCode(ProcessClass.java:121)
	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:384)
	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:332)
Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Code generation error after restart
	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:52)
	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
	at jadx.core.ProcessClass.process(ProcessClass.java:77)
	at jadx.core.ProcessClass.generateCode(ProcessClass.java:115)
	... 2 more
Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Method generation error
	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:309)
	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:272)
	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
Caused by: jadx.core.utils.exceptions.CodegenException: MOVE_RESULT instruction can be used only in fallback mode
	at jadx.core.codegen.InsnGen.fallbackOnlyInsn(InsnGen.java:664)
	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:589)
	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:141)
	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:117)
	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:104)
	at jadx.core.codegen.ConditionGen.addCompare(ConditionGen.java:115)
	at jadx.core.codegen.ConditionGen.add(ConditionGen.java:57)
	at jadx.core.codegen.ConditionGen.add(ConditionGen.java:46)
	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:112)
	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
	at jadx.core.dex.regions.Region.generate(Region.java:35)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:296)
	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:275)
	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:377)
	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:306)
	... 5 more

