.class public interface abstract annotation Lkotlin/DeprecatedSinceKotlin;
.super Ljava/lang/Object;
.source "Annotations.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lkotlin/DeprecatedSinceKotlin;
        errorSince = ""
        hiddenSince = ""
        warningSince = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;,
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0087\u0002\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u00020\u00038\u0006@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0013\u0010\u0006\u001a\u00020\u00038\u0006@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0005R\u0013\u0010\u0007\u001a\u00020\u00038\u0006@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlin/DeprecatedSinceKotlin;",
        "Ljava/lang/annotation/Annotation;",
        "Lkotlin/Any;",
        "",
        "errorSince",
        "()Ljava/lang/String;",
        "hiddenSince",
        "warningSince",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
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
    version = "1.4"
.end annotation

.annotation runtime Lkotlin/annotation/MustBeDocumented;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lcom/apk/pc0;->do:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->this:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->new:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->if:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->goto:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->catch:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->break:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->super:Lcom/apk/pc0;
    }
.end annotation


# virtual methods
.method public abstract errorSince()Ljava/lang/String;
.end method

.method public abstract hiddenSince()Ljava/lang/String;
.end method

.method public abstract warningSince()Ljava/lang/String;
.end method
