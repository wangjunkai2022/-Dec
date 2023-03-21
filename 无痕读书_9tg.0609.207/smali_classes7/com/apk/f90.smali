.class public Lcom/apk/f90;
.super Ljava/lang/Object;
.source "TrFeedBackLayout.java"

# interfaces
.implements Lcom/apk/s90;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/s90<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/g90;


# direct methods
.method public constructor <init>(Lcom/apk/g90;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/f90;->do:Lcom/apk/g90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/r80;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/apk/f90;->do:Lcom/apk/g90;

    .line 3
    iget-object p3, p1, Lcom/apk/g90;->new:Lcom/apk/o80;

    if-eqz p3, :cond_0

    .line 4
    iget-object p1, p1, Lcom/apk/g90;->for:Lcom/tr/comment/sdk/bean/TrCommentBean;

    .line 5
    invoke-interface {p3, p1, p2}, Lcom/apk/o80;->if(Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/apk/f90;->do:Lcom/apk/g90;

    .line 7
    iget-object p1, p1, Lcom/apk/g90;->try:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method
