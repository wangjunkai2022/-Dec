.class public Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$do;
.super Ljava/lang/Object;
.source "RedBgColorDialog.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$for;

.field public final synthetic for:Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;

.field public final synthetic if:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$for;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$do;->for:Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$do;->do:Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$for;

    iput-object p3, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$do;->if:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$do;->do:Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$for;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    if-ne p3, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$do;->for:Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog;->goto:Landroid/widget/LinearLayout;

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$do;->if:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$do;->do:Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$for;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lcom/apk/g2;->case()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getBgColor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getfColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/apk/g2;->throws(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Lcom/apk/g2;->const()I

    move-result p1

    if-ne p1, p3, :cond_3

    return-void

    .line 11
    :cond_3
    invoke-static {p3}, Lcom/apk/g2;->package(I)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$do;->do:Lcom/biquge/ebook/app/ui/view/RedBgColorDialog$for;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
