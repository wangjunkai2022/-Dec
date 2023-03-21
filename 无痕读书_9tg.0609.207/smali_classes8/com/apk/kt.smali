.class public Lcom/apk/kt;
.super Ljava/lang/Object;
.source "PopBase.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic do:Lcom/apk/lt;


# direct methods
.method public constructor <init>(Lcom/apk/lt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/kt;->do:Lcom/apk/lt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/kt;->do:Lcom/apk/lt;

    invoke-virtual {p1}, Lcom/apk/lt;->if()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
