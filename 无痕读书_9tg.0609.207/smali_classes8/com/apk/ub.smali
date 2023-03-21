.class public Lcom/apk/ub;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/apk/xv;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/HomeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ub;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object p2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_SHELF_SORT_MODE_KEY"

    invoke-virtual {p2, v0, p1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2
    iget-object p1, p0, Lcom/apk/ub;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    .line 3
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->case:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->goto:Lcom/apk/t4;

    if-eqz p2, :cond_0

    .line 5
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/o4;

    invoke-direct {v1, p2}, Lcom/apk/o4;-><init>(Lcom/apk/t4;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->else:Lcom/manhua/ui/fragment/ComicShelfFragment;

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->while:Lcom/apk/p3;

    if-eqz p1, :cond_1

    .line 8
    new-instance p2, Lcom/apk/b1;

    invoke-direct {p2}, Lcom/apk/b1;-><init>()V

    new-instance v0, Lcom/apk/k3;

    invoke-direct {v0, p1}, Lcom/apk/k3;-><init>(Lcom/apk/p3;)V

    invoke-virtual {p2, v0}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    :cond_1
    return-void
.end method
