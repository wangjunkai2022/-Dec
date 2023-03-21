.class public final synthetic Lcom/apk/t2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/bean/Book;


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/bean/Book;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/t2;->do:Lcom/biquge/ebook/app/bean/Book;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/t2;->do:Lcom/biquge/ebook/app/bean/Book;

    invoke-static {v0}, Lcom/apk/u3;->do(Lcom/biquge/ebook/app/bean/Book;)V

    return-void
.end method
