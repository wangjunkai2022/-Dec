.class public Lcom/manhua/ui/widget/ComicReadMenuView$for;
.super Ljava/lang/Object;
.source "ComicReadMenuView.java"

# interfaces
.implements Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/widget/ComicReadMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/ComicReadMenuView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$for;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alpha(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView$for;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_BARRAGE_FONT_ALPHA_MARK_POSITION"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_BARRAGE_FONT_ALPHA_MARK_KEY"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$for;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 6
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    const/4 p2, 0x3

    .line 7
    invoke-virtual {p1, p2}, Lcom/apk/f00;->p(I)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 0

    return-void
.end method

.method public fontSize(IF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView$for;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_BARRAGE_FONT_SIZE_MARK_POSITION"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_BARRAGE_FONT_SIZE_MARK_KEY"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$for;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 6
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    const/4 p2, 0x3

    .line 7
    invoke-virtual {p1, p2}, Lcom/apk/f00;->p(I)V

    :cond_0
    return-void
.end method

.method public open(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView$for;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_READ_SHOW_DARRAGE_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView$for;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 5
    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Lcom/apk/f00;->p(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Lcom/apk/f00;->p(I)V

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView$for;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mBarrageSwitchView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_3
    return-void
.end method

.method public speed(IF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView$for;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_BARRAGE_FONT_SPEED_MARK_POSITION"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_BARRAGE_FONT_SPEED_MARK_KEY"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$for;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 6
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    const/4 p2, 0x3

    .line 7
    invoke-virtual {p1, p2}, Lcom/apk/f00;->p(I)V

    :cond_0
    return-void
.end method
