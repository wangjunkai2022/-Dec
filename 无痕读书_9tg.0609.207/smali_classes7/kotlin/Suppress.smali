.class public interface abstract annotation Lkotlin/Suppress;
.super Ljava/lang/Object;
.source "Annotations.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0087\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\u0012\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u00038\u0006@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlin/Suppress;",
        "Ljava/lang/annotation/Annotation;",
        "Lkotlin/Any;",
        "",
        "",
        "names",
        "()[Ljava/lang/String;",
        "<init>",
        "(Lcom/android/tools/r8/jetbrains/kotlin/Array;)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
    pn = ""
    xi = 0x0
    xs = ""
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lcom/apk/oc0;->do:Lcom/apk/oc0;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lcom/apk/pc0;->do:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->if:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->for:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->new:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->try:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->case:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->else:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->goto:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->this:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->break:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->catch:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->class:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->const:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->final:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->super:Lcom/apk/pc0;
    }
.end annotation


# virtual methods
.method public abstract names()[Ljava/lang/String;
.end method
