.class public Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$if;
.super Ljava/lang/Object;
.source "RedBgImageDialog.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


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
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$if;->do:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$if;->do:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->this:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;

    .line 3
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    if-eqz p1, :cond_5

    const-string p2, "6"

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 5
    invoke-static {}, Lcom/apk/g2;->case()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getBgImage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getfColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/apk/g2;->default(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$if;->do:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;

    .line 8
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->this:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getBgImage()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SP_READ_BG_IMAGE_ID_KEY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getBgImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    .line 13
    invoke-static {p1, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 15
    invoke-static {}, Lcom/apk/g2;->final()I

    move-result p1

    if-ne p1, p3, :cond_3

    return-void

    .line 16
    :cond_3
    invoke-static {p3}, Lcom/apk/g2;->continue(I)V

    const/4 p1, -0x1

    .line 17
    invoke-static {p1}, Lcom/apk/g2;->abstract(I)V

    .line 18
    invoke-static {v0}, Lcom/apk/da;->switch(Z)V

    .line 19
    invoke-static {v0}, Lcom/apk/da;->static(Z)V

    const/4 p1, 0x3

    .line 20
    invoke-static {p1}, Lcom/apk/g2;->private(I)V

    .line 21
    new-instance p1, Lcom/apk/mf;

    invoke-direct {p1}, Lcom/apk/mf;-><init>()V

    const-string p2, "backgorund_view_id"

    .line 22
    iput-object p2, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/apk/rl0;->else(Ljava/lang/Object;)V

    .line 24
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$if;->do:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;

    .line 25
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->this:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;

    .line 26
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$if;->do:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;

    invoke-static {p1, p2, v1}, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->this(Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method
