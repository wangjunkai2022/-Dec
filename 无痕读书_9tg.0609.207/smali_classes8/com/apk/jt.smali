.class public Lcom/apk/jt;
.super Ljava/lang/Object;
.source "PopBase.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic do:Lcom/apk/lt;


# direct methods
.method public constructor <init>(Lcom/apk/lt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/jt;->do:Lcom/apk/lt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/jt;->do:Lcom/apk/lt;

    invoke-virtual {p1}, Lcom/apk/lt;->if()V

    const/4 p1, 0x1

    return p1
.end method
