.class public Lcom/apk/eu;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final do:I

.field public static final if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/codelibrary/R$id;->immersion_status_bar_view:I

    sput v0, Lcom/apk/eu;->do:I

    .line 2
    sget v0, Lcom/codelibrary/R$id;->immersion_navigation_bar_view:I

    sput v0, Lcom/apk/eu;->if:I

    return-void
.end method
