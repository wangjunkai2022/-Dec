.class public Lcom/apk/ed;
.super Ljava/lang/Object;
.source "RedBgImageDialog.java"

# interfaces
.implements Lcom/apk/z5;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ed;->if:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;

    iput-object p2, p0, Lcom/apk/ed;->do:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    const-string v0, "SP_READ_BG_IMAGE_ID_KEY"

    .line 1
    invoke-static {v0, p2}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, p2, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    iget-object p1, p0, Lcom/apk/ed;->if:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;

    .line 4
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->this:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public for(IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public if(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f100129

    .line 1
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 2
    invoke-static {}, Lcom/apk/kf;->try()Lcom/apk/kf;

    move-result-object p1

    iget-object p2, p0, Lcom/apk/ed;->do:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lcom/apk/kf;->do:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/apk/ed;->if:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->this:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
