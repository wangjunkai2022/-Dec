.class public Lcom/apk/k8;
.super Ljava/lang/Object;
.source "SetActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/biquge/ebook/app/ui/activity/SetActivity;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/SetActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/k8;->for:Lcom/biquge/ebook/app/ui/activity/SetActivity;

    iput-object p2, p0, Lcom/apk/k8;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/k8;->if:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/k8;->for:Lcom/biquge/ebook/app/ui/activity/SetActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->mBookCacheSizeTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/apk/k8;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/apk/k8;->for:Lcom/biquge/ebook/app/ui/activity/SetActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->mComicCacheSizeTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/apk/k8;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
