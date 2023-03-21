.class public final Lcom/tr/comment/sdk/TrCommentSdk$do;
.super Lcom/apk/yv;
.source "TrCommentSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tr/comment/sdk/TrCommentSdk;->openIdeaDialog(Landroidx/fragment/app/FragmentActivity;Lcom/tr/comment/sdk/bean/TrSourceType;Lcom/tr/comment/sdk/bean/TrSortType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;


# direct methods
.method public constructor <init>(Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/TrCommentSdk$do;->do:Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;

    invoke-direct {p0}, Lcom/apk/yv;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/lxj/xpopup/core/BasePopupView;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tr/comment/sdk/TrCommentSdk$do;->do:Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;

    .line 2
    iget-object p1, p1, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->goto:Lcom/tr/comment/sdk/view/TrCommentView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/tr/comment/sdk/view/TrCommentView;->catch(Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
