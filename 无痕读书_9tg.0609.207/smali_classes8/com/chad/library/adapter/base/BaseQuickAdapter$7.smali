.class public Lcom/chad/library/adapter/base/BaseQuickAdapter$7;
.super Ljava/lang/Object;
.source "BaseQuickAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/BaseQuickAdapter;->autoLoadMore(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$7;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$7;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-static {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->access$500(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$7;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-static {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->access$500(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;->onLoadMoreRequested()V

    :cond_0
    return-void
.end method
