.class public Lcom/apk/tb;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/apk/xv;


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/HomeFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/tb;->if:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    iput p2, p0, Lcom/apk/tb;->do:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/apk/tb;->do:I

    if-ne p2, p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_SHELF_LIST_MODE_KEY"

    invoke-virtual {p2, v0, p1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3
    iget-object p1, p0, Lcom/apk/tb;->if:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->a(Lcom/biquge/ebook/app/ui/fragment/HomeFragment;)V

    return-void
.end method
