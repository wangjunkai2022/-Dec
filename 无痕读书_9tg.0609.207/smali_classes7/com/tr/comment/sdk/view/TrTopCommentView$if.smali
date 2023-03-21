.class public Lcom/tr/comment/sdk/view/TrTopCommentView$if;
.super Ljava/lang/Object;
.source "TrTopCommentView.java"

# interfaces
.implements Lcom/apk/r90;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tr/comment/sdk/view/TrTopCommentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/r90<",
        "Lcom/tr/comment/sdk/bean/TrCommentBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/tr/comment/sdk/view/TrTopCommentView;


# direct methods
.method public constructor <init>(Lcom/tr/comment/sdk/view/TrTopCommentView;Lcom/tr/comment/sdk/view/TrTopCommentView$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrTopCommentView$if;->do:Lcom/tr/comment/sdk/view/TrTopCommentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/r80;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p3, Lcom/tr/comment/sdk/bean/TrCommentBean;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p4, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_jubao_btn:I

    if-ne p1, p4, :cond_0

    .line 3
    new-instance p1, Lcom/apk/g90;

    iget-object p4, p0, Lcom/tr/comment/sdk/view/TrTopCommentView$if;->do:Lcom/tr/comment/sdk/view/TrTopCommentView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p1, p4}, Lcom/apk/g90;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object p4, p0, Lcom/tr/comment/sdk/view/TrTopCommentView$if;->do:Lcom/tr/comment/sdk/view/TrTopCommentView;

    invoke-virtual {p1, p3, p4}, Lcom/apk/g90;->if(Lcom/tr/comment/sdk/bean/TrCommentBean;Lcom/apk/o80;)V

    .line 5
    iget-object p3, p0, Lcom/tr/comment/sdk/view/TrTopCommentView$if;->do:Lcom/tr/comment/sdk/view/TrTopCommentView;

    .line 6
    iget-object p3, p3, Lcom/tr/comment/sdk/view/TrTopCommentView;->for:Landroidx/fragment/app/FragmentActivity;

    .line 7
    invoke-virtual {p1, p3, p1, p2}, Lcom/apk/g90;->do(Landroid/app/Activity;Lcom/apk/g90;Landroid/view/View;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrTopCommentView$if;->do:Lcom/tr/comment/sdk/view/TrTopCommentView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrTopCommentView$if;->do:Lcom/tr/comment/sdk/view/TrTopCommentView;

    .line 9
    iget-object p3, p2, Lcom/tr/comment/sdk/view/TrTopCommentView;->new:Lcom/tr/comment/sdk/bean/TrSourceType;

    .line 10
    iget-object p4, p2, Lcom/tr/comment/sdk/view/TrTopCommentView;->case:Ljava/lang/String;

    .line 11
    iget-object p2, p2, Lcom/tr/comment/sdk/view/TrTopCommentView;->else:Ljava/lang/String;

    .line 12
    invoke-static {p1, p3, p4, p2}, Lcom/tr/comment/sdk/TrCommentSdk;->openCommentActivity(Landroid/content/Context;Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
