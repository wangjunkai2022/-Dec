.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class$if;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class$if;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class$if;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/h2;->p(Z)V

    return-void
.end method
