.class public Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$if$do;
.super Ljava/lang/Object;
.source "UploadBookFragment.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$if;->public(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$if;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$if$do;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$if$do;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$if;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
