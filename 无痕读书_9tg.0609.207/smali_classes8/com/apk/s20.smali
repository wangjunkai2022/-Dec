.class public Lcom/apk/s20;
.super Ljava/lang/Object;
.source "PublicLoadingView.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;

.field public final synthetic if:Lcom/manhua/ui/widget/PublicLoadingView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/PublicLoadingView;Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/s20;->if:Lcom/manhua/ui/widget/PublicLoadingView;

    iput-object p2, p0, Lcom/apk/s20;->do:Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/s20;->do:Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/s20;->if:Lcom/manhua/ui/widget/PublicLoadingView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/apk/s20;->do:Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/biquge/ebook/app/bean/ErrorConfBean$RowsTipBean;

    invoke-static {p1, p2}, Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;->do(Landroid/content/Context;Lcom/biquge/ebook/app/bean/ErrorConfBean$RowsTipBean;)V

    :cond_0
    return-void
.end method
