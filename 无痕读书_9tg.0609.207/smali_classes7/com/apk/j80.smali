.class public Lcom/apk/j80;
.super Lcom/apk/i80;
.source "TrTopCommentAdapter.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/apk/i80;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public public(I)I
    .locals 0

    .line 1
    sget p1, Lcom/tr/comment/sdk/R$layout;->tr_sdk_item_top_comment_view:I

    return p1
.end method
