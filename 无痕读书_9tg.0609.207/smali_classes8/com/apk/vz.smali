.class public final synthetic Lcom/apk/vz;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/f00$new;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/f00$new;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/vz;->do:Lcom/apk/f00$new;

    iput-object p2, p0, Lcom/apk/vz;->if:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/apk/vz;->do:Lcom/apk/f00$new;

    iget-object v1, p0, Lcom/apk/vz;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apk/f00$new;->new(Ljava/lang/String;)V

    return-void
.end method
