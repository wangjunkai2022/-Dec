.class public Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$if;
.super Lcom/apk/u5;
.source "UploadBookFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public public(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$if$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$if$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$if;)V

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, p1, v1, v2, v2}, Lcom/apk/eg;->j(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;ZZ)V

    return-void
.end method
