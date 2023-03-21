.class public Lcom/apk/f7;
.super Ljava/lang/Object;
.source "BaseReadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

.field public final synthetic if:Lcom/apk/b7;


# direct methods
.method public constructor <init>(Lcom/apk/b7;Lcom/biquge/ebook/app/bean/MhtgTwoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/f7;->if:Lcom/apk/b7;

    iput-object p2, p0, Lcom/apk/f7;->do:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/f7;->if:Lcom/apk/b7;

    const v1, 0x7f090219

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2
    iget-object v1, p0, Lcom/apk/f7;->if:Lcom/apk/b7;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    iput-object v0, v1, Lcom/apk/b7;->if:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    .line 3
    iget-object v0, p0, Lcom/apk/f7;->if:Lcom/apk/b7;

    iget-object v1, v0, Lcom/apk/b7;->if:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/apk/f7;->do:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getPgname()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/apk/f7;->do:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getApkurl()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/apk/f7;->do:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getTips2()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/apk/f7;->do:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getTips()Ljava/lang/String;

    move-result-object v8

    .line 5
    invoke-virtual/range {v1 .. v8}, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->if(ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/apk/f7;->if:Lcom/apk/b7;

    iget-object v0, v0, Lcom/apk/b7;->if:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    const v1, 0x7f090126

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/apk/f7$do;

    invoke-direct {v1, p0}, Lcom/apk/f7$do;-><init>(Lcom/apk/f7;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/apk/f7;->if:Lcom/apk/b7;

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, v0, Lcom/apk/b7;->do:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
