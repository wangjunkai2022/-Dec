.class public Lcom/apk/vt;
.super Ljava/lang/Object;
.source "CommendMediaDialog.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/expand/CommendMediaDialog;


# direct methods
.method public constructor <init>(Lcom/expand/CommendMediaDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/vt;->do:Lcom/expand/CommendMediaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/vt;->do:Lcom/expand/CommendMediaDialog;

    .line 2
    iget-object p1, p1, Lcom/expand/CommendMediaDialog;->if:Lcom/expand/CommendMediaDialog$if;

    .line 3
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/apk/vt;->do:Lcom/expand/CommendMediaDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/expand/CommendMediaDialog;->if(Landroid/content/Context;Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;)V

    :cond_0
    return-void
.end method
