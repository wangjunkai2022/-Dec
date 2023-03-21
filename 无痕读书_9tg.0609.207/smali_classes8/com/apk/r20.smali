.class public Lcom/apk/r20;
.super Ljava/lang/Object;
.source "ComicReadMenuView.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/SwitchButton$new;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/ComicReadMenuView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/r20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/biquge/ebook/app/widget/SwitchButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/r20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 2
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_BOOK_VOLUME_FLIP_PAGE_KEY"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
