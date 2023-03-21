.class public final synthetic Lcom/apk/ia;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/ia;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/ia;->do:Ljava/lang/String;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$for;->goto(Ljava/lang/String;)V

    return-void
.end method
