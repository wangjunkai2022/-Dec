.class public abstract Lcom/apk/qz;
.super Ljava/lang/Object;
.source "BasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GV::",
        "Lcom/apk/rz;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public do:Lcom/apk/rz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TGV;"
        }
    .end annotation
.end field

.field public if:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/rz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TGV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/qz;->if:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    return-void
.end method
