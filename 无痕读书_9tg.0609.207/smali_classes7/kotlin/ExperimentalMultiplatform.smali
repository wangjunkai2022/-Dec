.class public interface abstract annotation Lkotlin/ExperimentalMultiplatform;
.super Ljava/lang/Object;
.source "Multiplatform.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
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

.annotation build Lkotlin/Experimental;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009120\u0001\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlin/ExperimentalMultiplatform;",
        "Ljava/lang/annotation/Annotation;",
        "Lkotlin/Any;",
        "<init>",
        "()V",
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

.annotation build Lkotlin/RequiresOptIn;
.end annotation

.annotation runtime Lkotlin/annotation/MustBeDocumented;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lcom/apk/oc0;->if:Lcom/apk/oc0;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lcom/apk/pc0;->do:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->if:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->new:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->try:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->case:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->else:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->goto:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->this:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->break:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->catch:Lcom/apk/pc0;,
        .enum Lcom/apk/pc0;->super:Lcom/apk/pc0;
    }
.end annotation
