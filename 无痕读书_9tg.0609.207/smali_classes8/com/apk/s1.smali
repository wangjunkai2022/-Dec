.class public final synthetic Lcom/apk/s1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/h2;

.field public final synthetic if:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/h2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/s1;->do:Lcom/apk/h2;

    iput-object p2, p0, Lcom/apk/s1;->if:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/apk/s1;->do:Lcom/apk/h2;

    iget-object v1, p0, Lcom/apk/s1;->if:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/apk/h2;->g(Ljava/util/List;)V

    return-void
.end method
