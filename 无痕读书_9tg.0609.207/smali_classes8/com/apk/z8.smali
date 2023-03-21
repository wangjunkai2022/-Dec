.class public final synthetic Lcom/apk/z8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/z8;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iput-object p2, p0, Lcom/apk/z8;->if:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/apk/z8;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object v1, p0, Lcom/apk/z8;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->Q(Ljava/lang/String;)V

    return-void
.end method
