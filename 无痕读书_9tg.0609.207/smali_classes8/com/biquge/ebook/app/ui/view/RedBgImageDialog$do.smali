.class public Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$do;
.super Ljava/lang/Object;
.source "RedBgImageDialog.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$do;->do:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$do;->do:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->this:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;

    .line 3
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p3, p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$do;->do:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;

    .line 5
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->else:Landroid/app/Activity;

    .line 6
    new-instance p3, Lcom/apk/yu;

    invoke-direct {p3, p2}, Lcom/apk/yu;-><init>(Landroid/app/Activity;)V

    .line 7
    sget-object p2, Lcom/apk/wu;->do:[Ljava/lang/String;

    .line 8
    invoke-virtual {p3, p2}, Lcom/apk/yu;->if([Ljava/lang/String;)Lcom/apk/yu;

    new-instance p2, Lcom/apk/fd;

    invoke-direct {p2, p1}, Lcom/apk/fd;-><init>(Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;)V

    .line 9
    invoke-virtual {p3, p2}, Lcom/apk/yu;->for(Lcom/apk/vu;)V

    :cond_0
    return-void
.end method
