.class public Lcom/apk/q9;
.super Ljava/lang/Object;
.source "NewBookReadMenuView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/q9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/q9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->case:Lcom/apk/l2;

    .line 3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/apk/l2;->default(I)V

    const-string v0, "baidu_tt_speed"

    .line 4
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 5
    sget-object v1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v1, v0, p1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
