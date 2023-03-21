.class public Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$const;
.super Ljava/lang/Object;
.source "NewBookReadMenuView.java"

# interfaces
.implements Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$const;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alpha(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$const;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->else:Lcom/apk/h2;

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
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$const;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->else:Lcom/apk/h2;

    const/4 p2, 0x3

    .line 7
    invoke-virtual {p1, p2}, Lcom/apk/h2;->N(I)V

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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$const;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->else:Lcom/apk/h2;

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
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$const;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->else:Lcom/apk/h2;

    const/4 p2, 0x3

    .line 7
    invoke-virtual {p1, p2}, Lcom/apk/h2;->N(I)V

    :cond_0
    return-void
.end method

.method public open(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$const;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->else:Lcom/apk/h2;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/h2;->strictfp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_READ_SHOW_DARRAGE_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$const;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 6
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->else:Lcom/apk/h2;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    .line 7
    invoke-virtual {v0, v1}, Lcom/apk/h2;->N(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, v1}, Lcom/apk/h2;->N(I)V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$const;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBarrageSwitchView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_3
    return-void
.end method

.method public speed(IF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$const;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->else:Lcom/apk/h2;

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
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$const;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->else:Lcom/apk/h2;

    const/4 p2, 0x3

    .line 7
    invoke-virtual {p1, p2}, Lcom/apk/h2;->N(I)V

    :cond_0
    return-void
.end method
