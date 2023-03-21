.class public final synthetic Lcom/apk/ob0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/tr/comment/sdk/view/TrCommentView;


# direct methods
.method public synthetic constructor <init>(Lcom/tr/comment/sdk/view/TrCommentView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/ob0;->do:Lcom/tr/comment/sdk/view/TrCommentView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/ob0;->do:Lcom/tr/comment/sdk/view/TrCommentView;

    invoke-virtual {v0}, Lcom/tr/comment/sdk/view/TrCommentView;->class()V

    return-void
.end method
