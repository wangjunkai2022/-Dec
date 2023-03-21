.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$const;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$const;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$const;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->z(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$const;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 3
    iget-boolean v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->public:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$const;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->z(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$const;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->z(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$const;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 7
    iget-boolean v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->public:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->p:Z

    if-nez v1, :cond_3

    .line 8
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Lcom/apk/g0;->for()V

    .line 10
    :cond_3
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->p:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method
