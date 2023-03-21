.class public Lcom/tr/comment/sdk/view/TrCommentView$new;
.super Ljava/lang/Object;
.source "TrCommentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tr/comment/sdk/view/TrCommentView;->case(Lcom/tr/comment/sdk/bean/TrCommentBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/tr/comment/sdk/bean/TrCommentBean;

.field public final synthetic if:Lcom/tr/comment/sdk/view/TrCommentView;


# direct methods
.method public constructor <init>(Lcom/tr/comment/sdk/view/TrCommentView;Lcom/tr/comment/sdk/bean/TrCommentBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView$new;->if:Lcom/tr/comment/sdk/view/TrCommentView;

    iput-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView$new;->do:Lcom/tr/comment/sdk/bean/TrCommentBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView$new;->do:Lcom/tr/comment/sdk/bean/TrCommentBean;

    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getClicktype()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView$new;->do:Lcom/tr/comment/sdk/bean/TrCommentBean;

    invoke-virtual {v0}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getApk_pkg()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView$new;->do:Lcom/tr/comment/sdk/bean/TrCommentBean;

    invoke-virtual {v1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getTarget()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/tr/comment/sdk/view/TrCommentView$new;->if:Lcom/tr/comment/sdk/view/TrCommentView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/apk/k40;->break(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView$new;->if:Lcom/tr/comment/sdk/view/TrCommentView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView$new;->if:Lcom/tr/comment/sdk/view/TrCommentView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/apk/fa0;->else(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :goto_0
    return-void
.end method
