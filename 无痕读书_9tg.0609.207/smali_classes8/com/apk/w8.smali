.class public final synthetic Lcom/apk/w8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

.field public final synthetic if:Z


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/w8;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iput-boolean p2, p0, Lcom/apk/w8;->if:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/apk/w8;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-boolean v1, p0, Lcom/apk/w8;->if:Z

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->V(Z)V

    return-void
.end method
