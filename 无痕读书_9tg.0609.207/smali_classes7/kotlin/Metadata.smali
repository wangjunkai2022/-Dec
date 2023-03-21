.class public interface abstract annotation Lkotlin/Metadata;
.super Ljava/lang/Object;
.source "Metadata.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lkotlin/Metadata;
        bv = {}
        d1 = {}
        d2 = {}
        k = 0x1
        mv = {}
        pn = ""
        xi = 0x0
        xs = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0087\u0002\u0018\u00002\u00020\u00012\u00020\u0002Bc\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\u0006\u001a\u00020\u00038\u0007@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0019\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0007@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0019\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0007@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u0016\u0010\u0011\u001a\u00020\u000e8\u0007@\u0007X\u0087\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0014\u001a\u00020\u00088\u0007@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0016\u001a\u00020\u000e8\u0007@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0010R\u0013\u0010\u0018\u001a\u00020\u00038\u0007@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0005R\u0016\u0010\u001a\u001a\u00020\u00088\u0007@\u0007X\u0087\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0013\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlin/Metadata;",
        "Ljava/lang/annotation/Annotation;",
        "Lkotlin/Any;",
        "",
        "bv",
        "()[I",
        "bytecodeVersion",
        "",
        "",
        "d1",
        "()[Ljava/lang/String;",
        "data1",
        "d2",
        "data2",
        "",
        "xi",
        "()I",
        "extraInt",
        "xs",
        "()Ljava/lang/String;",
        "extraString",
        "k",
        "kind",
        "mv",
        "metadataVersion",
        "pn",
        "packageName",
        "<init>",
        "(I[I[ILcom/android/tools/r8/jetbrains/kotlin/Array;Lcom/android/tools/r8/jetbrains/kotlin/Array;Ljava/lang/String;Ljava/lang/String;I)V",
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

.annotation build Lkotlin/SinceKotlin;
    version = "1.3"
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lcom/apk/oc0;->for:Lcom/apk/oc0;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lcom/apk/pc0;->do:Lcom/apk/pc0;
    }
.end annotation


# virtual methods
.method public abstract bv()[I
    .annotation build Lkotlin/jvm/JvmName;
        name = "bv"
    .end annotation
.end method

.method public abstract d1()[Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmName;
        name = "d1"
    .end annotation
.end method

.method public abstract d2()[Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmName;
        name = "d2"
    .end annotation
.end method

.method public abstract k()I
    .annotation build Lkotlin/jvm/JvmName;
        name = "k"
    .end annotation
.end method

.method public abstract mv()[I
    .annotation build Lkotlin/jvm/JvmName;
        name = "mv"
    .end annotation
.end method

.method public abstract pn()Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmName;
        name = "pn"
    .end annotation
.end method

.method public abstract xi()I
    .annotation build Lkotlin/jvm/JvmName;
        name = "xi"
    .end annotation
.end method

.method public abstract xs()Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmName;
        name = "xs"
    .end annotation
.end method
