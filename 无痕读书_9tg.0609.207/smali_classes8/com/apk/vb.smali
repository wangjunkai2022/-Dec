.class public Lcom/apk/vb;
.super Lcom/apk/c1;
.source "InfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public do:Z

.field public final synthetic if:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/vb;->if:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 3
    sget-object v1, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    const-string v1, "SP_INFO_UPLOAD_BOOK_KEY"

    .line 4
    invoke-static {v1, v0}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apk/vb;->do:Z

    .line 5
    :cond_0
    invoke-static {}, Lcom/apk/w0;->if()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/apk/vb;->if:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/high16 v3, 0x40d00000    # 6.5f

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->for:Lcom/apk/xp0;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lcom/apk/xp0;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v6

    invoke-direct {p1, v6}, Lcom/apk/xp0;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->for:Lcom/apk/xp0;

    const v6, 0x7f09025a

    .line 6
    invoke-virtual {v0, v6}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apk/xp0;->do(Landroid/view/View;)Lcom/apk/vp0;

    .line 7
    invoke-static {v4}, Lcom/apk/eg;->catch(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v3}, Lcom/apk/eg;->catch(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6, v2}, Lcom/apk/xp0;->this(FFZ)Lcom/apk/vp0;

    .line 8
    invoke-virtual {p1, v1}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->for:Lcom/apk/xp0;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1, v5}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    .line 11
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/apk/vb;->if:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    iget-boolean v0, p0, Lcom/apk/vb;->do:Z

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->new:Lcom/apk/xp0;

    if-nez v0, :cond_3

    .line 13
    new-instance v0, Lcom/apk/xp0;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/apk/xp0;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->new:Lcom/apk/xp0;

    .line 14
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mUploadTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/apk/xp0;->do(Landroid/view/View;)Lcom/apk/vp0;

    .line 15
    invoke-static {v4}, Lcom/apk/eg;->catch(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v3}, Lcom/apk/eg;->catch(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, p1, v3, v2}, Lcom/apk/xp0;->this(FFZ)Lcom/apk/vp0;

    .line 16
    invoke-virtual {v0, v1}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    goto :goto_1

    .line 17
    :cond_2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->new:Lcom/apk/xp0;

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p1, v5}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    :cond_3
    :goto_1
    return-void
.end method
