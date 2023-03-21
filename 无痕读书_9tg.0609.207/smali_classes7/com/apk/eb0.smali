.class public abstract Lcom/apk/eb0;
.super Ljava/lang/Object;
.source "BasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GV::",
        "Lcom/apk/fb0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public do:Lcom/apk/fb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TGV;"
        }
    .end annotation
.end field

.field public if:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apk/fb0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TGV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/eb0;->if:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/apk/eb0;->do:Lcom/apk/fb0;

    return-void
.end method
