.class public Lcom/tr/comment/sdk/view/TrCommentView$do;
.super Ljava/lang/Object;
.source "TrCommentView.java"

# interfaces
.implements Lcom/apk/g80;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tr/comment/sdk/view/TrCommentView;->throw(Lcom/tr/comment/sdk/bean/TrCommentBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/tr/comment/sdk/view/TrCommentView;


# direct methods
.method public constructor <init>(Lcom/tr/comment/sdk/view/TrCommentView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView$do;->do:Lcom/tr/comment/sdk/view/TrCommentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView$do;->do:Lcom/tr/comment/sdk/view/TrCommentView;

    invoke-virtual {v0, p1, p2}, Lcom/tr/comment/sdk/view/TrCommentView;->else(Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V

    return-void
.end method
