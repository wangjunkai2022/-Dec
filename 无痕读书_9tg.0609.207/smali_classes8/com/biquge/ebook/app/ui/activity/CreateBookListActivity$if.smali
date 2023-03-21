.class public Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$if;
.super Lcom/apk/u5;
.source "CreateBookListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public while(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    invoke-virtual {p1}, Lcom/apk/f6;->finish()V

    return-void
.end method
