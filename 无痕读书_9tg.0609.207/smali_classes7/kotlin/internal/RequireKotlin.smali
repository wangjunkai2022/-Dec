.class public interface abstract annotation Lkotlin/internal/RequireKotlin;
.super Ljava/lang/Object;
.source "Annotations.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lkotlin/internal/RequireKotlin;
        errorCode = -0x1
        level = .enum Lcom/apk/hc0;->if:Lcom/apk/hc0;
        message = ""
        versionKind = .enum Lcom/apk/fd0;->do:Lcom/apk/fd0;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0081\u0002\u0018\u00002\u00020\u00012\u00020\u0002B7\u0012\u0006\u0010\u000c\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0004\u001a\u00020\u00038\u0006@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0013\u0010\u0007\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\n\u001a\u00020\t8\u0006@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u000c\u001a\u00020\t8\u0006@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000bR\u0013\u0010\u000e\u001a\u00020\r8\u0006@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/internal/RequireKotlin;",
        "Ljava/lang/annotation/Annotation;",
        "Lkotlin/Any;",
        "",
        "errorCode",
        "()I",
        "Lkotlin/DeprecationLevel;",
        "level",
        "()Lkotlin/DeprecationLevel;",
        "",
        "message",
        "()Ljava/lang/String;",
        "version",
        "Lkotlin/internal/RequireKotlinVersionKind;",
        "versionKind",
        "()Lkotlin/internal/RequireKotlinVersionKind;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/DeprecationLevel;Lkotlin/internal/RequireKotlinVersionKind;I)V",
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
    version = "1.2"
.end annotation

.annotation runtime Lkotlin/annotation/Repeatable;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lcom/apk/oc0;->do:Lcom/apk/oc0;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lcom/apk/pc0;->do:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->this:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->new:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->goto:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->super:Lcom/apk/pc0;
    }
.end annotation


# virtual methods
.method public abstract errorCode()I
.end method

.method public abstract level()Lcom/apk/hc0;
.end method

.method public abstract message()Ljava/lang/String;
.end method

.method public abstract version()Ljava/lang/String;
.end method

.method public abstract versionKind()Lcom/apk/fd0;
.end method
