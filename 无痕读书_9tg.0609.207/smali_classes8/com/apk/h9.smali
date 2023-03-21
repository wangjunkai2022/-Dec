.class public Lcom/apk/h9;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Lcom/apk/ft;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/h9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    new-instance v1, Lcom/apk/g0;

    .line 2
    iget-object v2, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->l:Lcom/apk/e1;

    .line 3
    invoke-direct {v1, v0, v2}, Lcom/apk/g0;-><init>(Landroid/content/Context;Lcom/apk/e1;)V

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    return-void
.end method
