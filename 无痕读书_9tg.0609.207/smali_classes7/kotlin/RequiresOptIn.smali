.class public interface abstract annotation Lkotlin/RequiresOptIn;
.super Ljava/lang/Object;
.source "OptIn.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lkotlin/RequiresOptIn;
        level = .enum Lkotlin/RequiresOptIn$do;->if:Lkotlin/RequiresOptIn$do;
        message = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/RequiresOptIn$do;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0087\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u000bB\u001b\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u00020\u00038\u0006@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0013\u0010\u0007\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u0099F0\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlin/RequiresOptIn;",
        "Ljava/lang/annotation/Annotation;",
        "Lkotlin/Any;",
        "Lkotlin/RequiresOptIn$Level;",
        "level",
        "()Lkotlin/RequiresOptIn$Level;",
        "",
        "message",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;Lkotlin/RequiresOptIn$Level;)V",
        "Level",
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
    value = .enum Lcom/apk/oc0;->if:Lcom/apk/oc0;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lcom/apk/pc0;->if:Lcom/apk/pc0;
    }
.end annotation


# virtual methods
.method public abstract level()Lkotlin/RequiresOptIn$do;
.end method

.method public abstract message()Ljava/lang/String;
.end method
